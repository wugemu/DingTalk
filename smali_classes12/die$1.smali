.class public final Ldie$1;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldie;


# direct methods
.method public constructor <init>(Ldie;)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 85
    iput-object p1, p0, Ldie$1;->a:Ldie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_topic_panel_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Ldie$1;->a:Ldie;

    .line 1177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldie;->c(Z)V

    .line 90
    return-void
.end method
