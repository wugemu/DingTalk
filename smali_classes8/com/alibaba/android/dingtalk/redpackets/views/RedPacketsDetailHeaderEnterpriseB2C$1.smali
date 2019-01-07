.class final Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;
.super Landroid/text/style/ClickableSpan;
.source "RedPacketsDetailHeaderEnterpriseB2C.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C$1;->a:Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/redpackets/views/RedPacketsDetailHeaderEnterpriseB2C;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 129
    return-void
.end method
