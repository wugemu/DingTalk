.class final Ldha$5;
.super Ljava/lang/Object;
.source "CooperationGroupAddMemberHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldha;


# direct methods
.method constructor <init>(Ldha;)V
    .locals 0
    .param p1, "this$0"    # Ldha;

    .prologue
    .line 210
    iput-object p1, p0, Ldha$5;->a:Ldha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Ldha$5;->a:Ldha;

    .line 1036
    const/4 v1, 0x0

    iput-object v1, v0, Ldha;->e:Lech;

    .line 214
    return-void
.end method
