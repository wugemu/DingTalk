.class final Ladh$1;
.super Ljava/lang/Object;
.source "MailUidBundle.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/account/AccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladh;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladh;


# direct methods
.method constructor <init>(Ladh;)V
    .locals 0
    .param p1, "this$0"    # Ladh;

    .prologue
    .line 22
    iput-object p1, p0, Ladh$1;->a:Ladh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountLogin(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 26
    return-void
.end method

.method public final onAccountLogout(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 31
    return-void
.end method

.method public final onAccountRemoved(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 36
    return-void
.end method
