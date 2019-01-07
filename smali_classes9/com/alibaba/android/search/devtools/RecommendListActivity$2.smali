.class final Lcom/alibaba/android/search/devtools/RecommendListActivity$2;
.super Ljava/lang/Object;
.source "RecommendListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/devtools/RecommendListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/devtools/RecommendListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/devtools/RecommendListActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$2;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/search/devtools/RecommendListActivity$2;->a:Lcom/alibaba/android/search/devtools/RecommendListActivity;

    invoke-static {v0}, Lcom/alibaba/android/search/devtools/RecommendListActivity;->b(Lcom/alibaba/android/search/devtools/RecommendListActivity;)V

    .line 80
    return-void
.end method
