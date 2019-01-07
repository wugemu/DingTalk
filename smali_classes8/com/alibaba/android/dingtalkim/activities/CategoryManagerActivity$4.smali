.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->d(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;J)V

    .line 212
    return-void
.end method
