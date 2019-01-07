.class final Lcqt$4;
.super Ljava/lang/Object;
.source "CommentInputPanelWrapper.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcqt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcqt;


# direct methods
.method constructor <init>(Lcqt;)V
    .locals 0
    .param p1, "this$0"    # Lcqt;

    .prologue
    .line 180
    iput-object p1, p0, Lcqt$4;->a:Lcqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcqt$4;->a:Lcqt;

    .line 1039
    invoke-virtual {v0}, Lcqt;->c()V

    .line 184
    return-void
.end method
