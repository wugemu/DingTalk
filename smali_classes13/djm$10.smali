.class final Ldjm$10;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjm;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 471
    iput-boolean p1, p0, Ldjm$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 475
    iget-boolean v0, p0, Ldjm$10;->a:Z

    if-eqz v0, :cond_0

    .line 476
    const-string/jumbo v0, "chat_single_unread_ding_cancel"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string/jumbo v0, "chat_group_unread_ding_cancel"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
