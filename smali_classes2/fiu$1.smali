.class final Lfiu$1;
.super Ljava/lang/Object;
.source "CommonContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfiu;->a(Lcom/alibaba/android/dingtalkbase/uidic/cells/C3I1ImageCell;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lfiu;


# direct methods
.method constructor <init>(Lfiu;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lfiu;

    .prologue
    .line 286
    iput-object p1, p0, Lfiu$1;->c:Lfiu;

    iput-object p2, p0, Lfiu$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfiu$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 289
    iget-object v0, p0, Lfiu$1;->c:Lfiu;

    const-string/jumbo v1, "DeviceListFragment"

    iget-object v2, p0, Lfiu$1;->a:Ljava/lang/String;

    iget-wide v4, p0, Lfiu$1;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lfiu;->a(Lfiu;Ljava/lang/String;Ljava/lang/String;J)V

    .line 290
    return-void
.end method
