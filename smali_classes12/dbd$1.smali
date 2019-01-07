.class final Ldbd$1;
.super Ljava/lang/Object;
.source "UserTaoResCardAbsViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldbd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldbd;


# direct methods
.method constructor <init>(Ldbd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldbd;

    .prologue
    .line 96
    iput-object p1, p0, Ldbd$1;->c:Ldbd;

    iput-object p2, p0, Ldbd$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldbd$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Ldbd$1;->c:Ldbd;

    iget-boolean v0, v0, Ldbd;->a:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Ldbd$1;->c:Ldbd;

    iget-object v1, p0, Ldbd$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbd;->a(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Ldbd$1;->c:Ldbd;

    iget-object v1, p0, Ldbd$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldbd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
