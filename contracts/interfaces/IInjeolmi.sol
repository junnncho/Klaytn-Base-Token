pragma solidity ^0.5.6;

interface AllRound {

    event Transfer(address indexed from, address indexed to, uint256 value);  // 토큰 전송 이벤트 함수
    event Approval(address indexed owner, address indexed spender, uint256 value); // 권한 부여 이벤트 함수

    function totalSupply() external view returns (uint256); // 토큰 전체 물량 반환 함수
    function balanceOf(address account) external view returns (uint256); // 특정 주소 토큰 잔액 반환 함수

    function allowance(address owner, address spender) external view returns (uint256); //owner가 spender에게 허락한 토큰 인출 개수를 반환
    function approve(address spender, uint256 amount) external returns (bool); //spender가 일정 토큰을 인출할 수 있도록 권한부여

    function transfer(address recipient, uint256 amount) external returns (bool); //토큰 전달 결과 값 반환(bool 형태)
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool); //송신주소에서 수신주소로 토큰 전송한 결과값 반환, approve 함수 승인필요
}


//이 코드는 erc20 인터페이스 코드, 토큰 기능을 하기 위한 코드들임( 송금, 입금, 토큰 개수 등등);;
//참고 https://docs.klaytn.com/smart-contract/sample-contracts/erc-20/1-erc20
//참고 https://blog.naver.com/uoops7/221567836832