.class final Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;
.super Ljava/lang/Object;
.source "InputPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 285
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->o(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;ZLjava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J

    .line 291
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;J)J

    .line 292
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v2, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZZ)Z

    .line 293
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Z)Z

    .line 294
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->p(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView$b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
