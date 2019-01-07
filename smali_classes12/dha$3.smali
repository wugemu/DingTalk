.class final Ldha$3;
.super Ljava/lang/Object;
.source "CooperationGroupAddMemberHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldha;


# direct methods
.method constructor <init>(Ldha;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldha;

    .prologue
    .line 171
    iput-object p1, p0, Ldha$3;->c:Ldha;

    iput-object p2, p0, Ldha$3;->a:Ljava/util/List;

    iput-object p3, p0, Ldha$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v0, p0, Ldha$3;->c:Ldha;

    iget-object v1, p0, Ldha$3;->a:Ljava/util/List;

    iget-object v2, p0, Ldha$3;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ldha;->a(Ldha;Ljava/util/List;Ljava/util/List;)V

    .line 175
    return-void
.end method
