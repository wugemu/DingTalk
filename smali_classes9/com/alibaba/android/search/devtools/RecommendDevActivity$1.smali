.class final Lcom/alibaba/android/search/devtools/RecommendDevActivity$1;
.super Ljava/lang/Object;
.source "RecommendDevActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/RecommendDevActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/RecommendDevActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendDevActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/devtools/RecommendDevActivity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendDevActivity$1;->a:Lcom/alibaba/android/search/devtools/RecommendDevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendDevActivity$1;->a:Lcom/alibaba/android/search/devtools/RecommendDevActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/devtools/RecommendDevActivity;->a(Lcom/alibaba/android/search/devtools/RecommendDevActivity;)V

    .line 75
    return-void
.end method
