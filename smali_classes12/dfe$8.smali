.class final Ldfe$8;
.super Ljava/lang/Object;
.source "ShoppingChatPlugin.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldfe;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Ldfe;


# direct methods
.method constructor <init>(Ldfe;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Ldfe;

    .prologue
    .line 405
    iput-object p1, p0, Ldfe$8;->c:Ldfe;

    iput-object p2, p0, Ldfe$8;->a:Ljava/util/List;

    iput p3, p0, Ldfe$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 408
    iget-object v1, p0, Ldfe$8;->c:Ldfe;

    iget-object v0, p0, Ldfe$8;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ldfe;->a(Ldfe;J)J

    .line 409
    iget-object v0, p0, Ldfe$8;->c:Ldfe;

    iget v1, p0, Ldfe$8;->b:I

    invoke-static {v0, v1}, Ldfe;->b(Ldfe;I)V

    .line 410
    return-void
.end method
