.class final Ldfd$1;
.super Ljava/lang/Object;
.source "RecruitmentChatPlugin.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ldfd;


# direct methods
.method constructor <init>(Ldfd;Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldfd;

    .prologue
    .line 147
    iput-object p1, p0, Ldfd$1;->f:Ldfd;

    iput-object p2, p0, Ldfd$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Ldfd$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Ldfd$1;->c:J

    iput-boolean p6, p0, Ldfd$1;->d:Z

    iput-object p7, p0, Ldfd$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    move-object v8, p1

    check-cast v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1150
    iget-object v1, p0, Ldfd$1;->f:Ldfd;

    iget-object v2, p0, Ldfd$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldfd$1;->b:Ljava/lang/String;

    iget-wide v4, p0, Ldfd$1;->c:J

    iget-boolean v6, p0, Ldfd$1;->d:Z

    iget-object v7, p0, Ldfd$1;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Ldfd;->a(Ldfd;Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 147
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v1, p0, Ldfd$1;->f:Ldfd;

    iget-object v2, p0, Ldfd$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Ldfd$1;->b:Ljava/lang/String;

    iget-wide v4, p0, Ldfd$1;->c:J

    iget-boolean v6, p0, Ldfd$1;->d:Z

    iget-object v7, p0, Ldfd$1;->e:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Ldfd;->a(Ldfd;Landroid/app/Activity;Ljava/lang/String;JZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 160
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 155
    return-void
.end method
