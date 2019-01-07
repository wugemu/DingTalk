.class final Lfiu$2;
.super Ljava/lang/Object;
.source "CommonContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfiu;
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
    .line 298
    iput-object p1, p0, Lfiu$2;->c:Lfiu;

    iput-object p2, p0, Lfiu$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lfiu$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lfiu$2;->c:Lfiu;

    invoke-static {v0}, Lfiu;->a(Lfiu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lfiu$2;->c:Lfiu;

    const-string/jumbo v2, "OrgContactFragment"

    iget-object v3, p0, Lfiu$2;->a:Ljava/lang/String;

    iget-wide v4, p0, Lfiu$2;->b:J

    invoke-static {}, Lfxe;->a()Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lfiu;->a(Lfiu;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 303
    return-void
.end method
