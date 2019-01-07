.class public Lcom/mybank/android/phone/common/service/login/LoginService$LoginConstants;
.super Ljava/lang/Object;
.source "LoginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/login/LoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginConstants"
.end annotation


# static fields
.field public static final ACTION_ACCOUNT_LOGIN_FAILED:Ljava/lang/String; = "com.mybank.login.ACTION_LOGIN_FAILED"

.field public static final ACTION_ACCOUNT_LOGIN_OUT:Ljava/lang/String; = "com.mybank.login.ACTION_LOGIN_OUT"

.field public static final ACTION_ACCOUNT_LOGIN_SUCCESS:Ljava/lang/String; = "com.mybank.login.ACTION_LOGIN_SUCCESS"


# instance fields
.field final synthetic this$0:Lcom/mybank/android/phone/common/service/login/LoginService;


# direct methods
.method public constructor <init>(Lcom/mybank/android/phone/common/service/login/LoginService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/phone/common/service/login/LoginService;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mybank/android/phone/common/service/login/LoginService$LoginConstants;->this$0:Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
