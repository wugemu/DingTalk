.class final Lbin$2;
.super Ljava/lang/Object;
.source "DingNotifyCenterViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbin;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic d:Z

.field final synthetic e:Lbin;


# direct methods
.method constructor <init>(Lbin;ILjava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 0
    .param p1, "this$0"    # Lbin;

    .prologue
    .line 111
    iput-object p1, p0, Lbin$2;->e:Lbin;

    iput p2, p0, Lbin$2;->a:I

    iput-object p3, p0, Lbin$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lbin$2;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-boolean p5, p0, Lbin$2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "intent_key_unread_comment_count"

    iget v2, p0, Lbin$2;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object v1, p0, Lbin$2;->e:Lbin;

    iget-object v1, v1, Lbin;->c:Landroid/app/Activity;

    iget-object v2, p0, Lbin$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lbin$2;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 116
    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 117
    iget-boolean v1, p0, Lbin$2;->d:Z

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lbjz;->a()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lbjz;->b()V

    goto :goto_0
.end method
