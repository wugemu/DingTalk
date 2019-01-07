.class final Ldiv$1;
.super Ljava/lang/Object;
.source "CMailMsgUploader.java"

# interfaces
.implements Lfzl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiv;->upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiv;


# direct methods
.method constructor <init>(Ldiv;)V
    .locals 0
    .param p1, "this$0"    # Ldiv;

    .prologue
    .line 62
    iput-object p1, p0, Ldiv$1;->a:Ldiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "cMailExtData"    # Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "l"    # J
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "errCode"    # Ljava/lang/String;
    .param p5, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Ldiv$1;->a:Ldiv;

    invoke-static {v0}, Ldiv;->b(Ldiv;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldiv$1$1;

    invoke-direct {v1, p0, p4, p5}, Ldiv$1$1;-><init>(Ldiv$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
