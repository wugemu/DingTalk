.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$2;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$2;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "switchKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1119
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "featureSwitch"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1129
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
