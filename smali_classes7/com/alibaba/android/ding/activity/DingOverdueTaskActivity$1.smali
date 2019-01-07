.class final Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;
.super Ljava/lang/Object;
.source "DingOverdueTaskActivity.java"

# interfaces
.implements Lbiz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a()V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a(Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingOverdueTaskActivity;->a()V

    goto :goto_0
.end method
