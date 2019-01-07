.class public final Lbly$1;
.super Ljava/lang/Object;
.source "AlphaHelper.java"

# interfaces
.implements Lbmi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmi;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lbmi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lbly$1;->a:Lbmi;

    iput-object p2, p0, Lbly$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lbly$1;->a:Lbmi;

    invoke-interface {v0, p1, p2}, Lbmi;->a(ILjava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 147
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    check-cast p1, Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lbly$1;->a:Lbmi;

    invoke-interface {v0, p1}, Lbmi;->a(Ljava/lang/Object;)V

    .line 1139
    iget-object v0, p0, Lbly$1;->b:Landroid/content/Context;

    const-string/jumbo v1, "clientMacFromC1"

    invoke-static {v0, v1, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 135
    return-void
.end method
