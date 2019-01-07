.class final Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$1;
.super Ljava/lang/Object;
.source "FaceRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$1;->a:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$1;->a:Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->onBackPressed()V

    .line 144
    return-void
.end method
