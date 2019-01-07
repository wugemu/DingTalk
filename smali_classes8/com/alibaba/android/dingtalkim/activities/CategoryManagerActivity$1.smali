.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Lcub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Lcub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcub;->a(II)V

    .line 140
    :cond_0
    return-void
.end method
