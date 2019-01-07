.class final Lcrp$1;
.super Ljava/lang/Object;
.source "CommonResponsePanelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrp;->a(Landroid/view/View;Lcrp$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrp;


# direct methods
.method constructor <init>(Lcrp;)V
    .locals 0
    .param p1, "this$0"    # Lcrp;

    .prologue
    .line 99
    iput-object p1, p0, Lcrp$1;->a:Lcrp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcrp$1;->a:Lcrp;

    .line 1022
    iget-object v0, v0, Lcrp;->a:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lcrp$1;->a:Lcrp;

    .line 2022
    iget-object v1, v1, Lcrp;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 102
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    return-void
.end method
