.class final Ldsb$1;
.super Ljava/lang/Object;
.source "RetailUserInfoModel.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldsb;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldsb;


# direct methods
.method constructor <init>(Ldsb;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldsb;

    .prologue
    .line 122
    iput-object p1, p0, Ldsb$1;->b:Ldsb;

    iput-object p2, p0, Ldsb$1;->a:Ljava/util/List;

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
    .line 125
    iget-object v1, p0, Ldsb$1;->b:Ldsb;

    iget-object v0, p0, Ldsb$1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Ldsb;->a:J

    .line 126
    iget-object v0, p0, Ldsb$1;->b:Ldsb;

    iget-object v1, p0, Ldsb$1;->b:Ldsb;

    iget-wide v2, v1, Ldsb;->a:J

    .line 1036
    invoke-virtual {v0, v2, v3}, Ldsb;->a(J)V

    .line 127
    return-void
.end method
