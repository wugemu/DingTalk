.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    iput-boolean p4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    iget-boolean v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$1;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;Z)V

    .line 337
    return-void
.end method
