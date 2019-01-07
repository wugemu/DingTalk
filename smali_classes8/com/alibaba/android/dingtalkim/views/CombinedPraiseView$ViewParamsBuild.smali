.class public Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewParamsBuild"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;-><init>(Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$ViewParamsBuild;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$c;

    .line 322
    return-void
.end method
