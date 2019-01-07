.class final Lekw$9;
.super Ljava/lang/Object;
.source "PwdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lekw;


# direct methods
.method constructor <init>(Lekw;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lekw;

    .prologue
    .line 423
    iput-object p1, p0, Lekw$9;->c:Lekw;

    iput-wide p2, p0, Lekw$9;->a:J

    iput-object p4, p0, Lekw$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    new-instance v0, Lekv;

    invoke-direct {v0}, Lekv;-><init>()V

    .line 427
    .local v0, "dataSource":Leku;
    iget-wide v2, p0, Lekw$9;->a:J

    invoke-interface {v0, v2, v3}, Leku;->a(J)Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    move-result-object v1

    .line 428
    .local v1, "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    if-nez v1, :cond_0

    .line 429
    new-instance v1, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;

    .end local v1    # "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    invoke-direct {v1}, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;-><init>()V

    .line 430
    .restart local v1    # "securityEntry":Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;
    iget-wide v2, p0, Lekw$9;->a:J

    iput-wide v2, v1, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->uid:J

    .line 432
    :cond_0
    iget-object v2, p0, Lekw$9;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;->hideBossMode:Ljava/lang/String;

    .line 433
    invoke-interface {v0, v1}, Leku;->a(Lcom/alibaba/android/rimet/biz/pwd/entry/UserSecurityEntry;)I

    .line 434
    const-string/jumbo v2, "pwd"

    const-string/jumbo v3, "PwdManager"

    const-string/jumbo v4, "saveHideBossModeToDatabase success"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method
