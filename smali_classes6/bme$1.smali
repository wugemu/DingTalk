.class public final Lbme$1;
.super Ljava/lang/Object;
.source "ClientNpcManager.java"

# interfaces
.implements Lbmi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbmi",
        "<",
        "Lbmn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmi;

.field final synthetic b:Lbme;


# direct methods
.method public constructor <init>(Lbme;Lbmi;)V
    .locals 0
    .param p1, "this$0"    # Lbme;

    .prologue
    .line 47
    iput-object p1, p0, Lbme$1;->b:Lbme;

    iput-object p2, p0, Lbme$1;->a:Lbmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    invoke-interface {v0, p1, p2}, Lbmi;->a(ILjava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 47
    check-cast p1, Lbmn;

    .line 1050
    if-eqz p1, :cond_1

    .line 1051
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    iget-object v1, p1, Lbmn;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbmi;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lbme$1;->a:Lbmi;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NPC_RESPONSE_NULL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v1, v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NPC_RESPONSE_NULL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lbmi;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
