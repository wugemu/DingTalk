.class final Lfkw$5;
.super Ljava/lang/Object;
.source "OrgMemberQrcodePresenter.java"

# interfaces
.implements Lfkt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfkw;


# direct methods
.method constructor <init>(Lfkw;)V
    .locals 0
    .param p1, "this$0"    # Lfkw;

    .prologue
    .line 236
    iput-object p1, p0, Lfkw$5;->a:Lfkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 240
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfkw$5$1;

    invoke-direct {v1, p0, p1}, Lfkw$5$1;-><init>(Lfkw$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method
