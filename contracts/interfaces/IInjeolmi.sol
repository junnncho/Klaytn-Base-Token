pragma solidity ^0.5.6;

interface All-Round {

    event Transfer(address indexed from, address indexed to, uint256 value); // 토큰 전송 이벤트 함수
    event Approval(address indexed owner, address indexed spender, uint256 value); //권한 부여 이벤트 함수

    function totalSupply() external view returns (uint256); //전체 토큰 물량 반환 함수
    function balanceOf(address account) external view returns (uint256); // 특정 주소 토큰 잔액 반환 함수

    function allowance(address owner, address spender) external view returns (uint256); // 토큰 소유자(owner)가 토큰 수신자(spender)에게 인출을 허락한 토큰이 얼마인지를 반환.
    function approve(address spender, uint256 amount) external returns (bool); // 송신자가 보유한 토큰에서 일정금액(amount)만큼의 토큰을 인출할수 있는 권한을 수신자(spender)에게 부여.

    function transfer(address recipient, uint256 amount) external returns (bool); // 수신자(recipient) 로 해당금액(amount)를 송금. 송금 성공시 true를 reutrn, 실패시 false를 return
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    // transferFrom이 성공하려면 먼저 approve 인터페이스를 사용하여 일정금액을 인출할수 있도록 허락하여야 함.


//이 코드는 erc20 인터페이스 코드, 토큰 기본 기능을 하기 위한 코드들임( 송금, 입금, 토큰 개수 등등);;
//참고 https://docs.klaytn.com/smart-contract/sample-contracts/erc-20/1-erc20
// https://blog.naver.com/uoops7/221567836832 (erc-20 interface 코드 세부 설명).