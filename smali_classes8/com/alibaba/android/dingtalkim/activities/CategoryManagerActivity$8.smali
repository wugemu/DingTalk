.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->onBackPressed()V
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
    .line 421
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    .line 427
    :cond_0
    return-void
.end method
