.class final Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;
.super Ljava/lang/Object;
.source "IMSTMtopAVUploadReceiver.java"

# interfaces
.implements Lixz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;


# direct methods
.method constructor <init>(Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;Landroid/content/Intent;ILandroid/content/Context;JJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->g:Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver;

    iput-object p2, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->b:I

    iput-object p4, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->c:Landroid/content/Context;

    iput-wide p5, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->d:J

    iput-wide p7, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->e:J

    iput-wide p9, p0, Lcom/im/av/logic/manage/IMSTMtopAVUploadReceiver$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
