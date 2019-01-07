.class Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;
.super Ljava/lang/Object;
.source "VerifyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyLogTask"
.end annotation


# instance fields
.field extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field param1:Ljava/lang/String;

.field param2:Ljava/lang/String;

.field param3:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

.field type:Ljava/lang/String;

.field userCaseID:Ljava/lang/String;

.field verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param1:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param2:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    .line 81
    iput-object p7, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    .line 82
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
