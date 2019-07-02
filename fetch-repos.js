const fs = require('fs');
const Octokit = require('@octokit/rest')
const octokit = new Octokit();

org = process.argv[2];

if(org == undefined) {
  throw "Define an org"
}

octokit.paginate('GET /orgs/' + org + '/repos', (response, done) => {
  for(a in response.data) {
    fs.appendFile(org + '-repos.txt', response.data[a]["ssh_url"] + "\n", () => {});
  }
});
