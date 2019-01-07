.class public final Lrj$2;
.super Ljava/lang/Object;
.source "CalendarNavUtil.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lrj$2;->a:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_event_instance"

    iget-object v2, p0, Lrj$2;->a:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    return-object p1
.end method
