.class final Ldii$2;
.super Ljava/lang/Object;
.source "TopicEmotionSearchPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldii;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldii;


# direct methods
.method constructor <init>(Ldii;)V
    .locals 0
    .param p1, "this$0"    # Ldii;

    .prologue
    .line 122
    iput-object p1, p0, Ldii$2;->a:Ldii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    check-cast p1, Ldta;

    .line 2125
    iget-object v0, p0, Ldii$2;->a:Ldii;

    .line 3028
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldii;->a(Z)V

    .line 2126
    if-eqz p1, :cond_1

    .line 2127
    iget-object v0, p0, Ldii$2;->a:Ldii;

    iget-boolean v1, p1, Ldta;->c:Z

    .line 4028
    iput-boolean v1, v0, Ldii;->c:Z

    .line 2128
    iget-object v0, p0, Ldii$2;->a:Ldii;

    iget-wide v2, p1, Ldta;->b:J

    .line 5028
    iput-wide v2, v0, Ldii;->b:J

    .line 2129
    iget-object v0, p1, Ldta;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldta;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Ldii$2;->a:Ldii;

    .line 6028
    iget-object v0, v0, Ldii;->e:Ljava/util/List;

    .line 2130
    iget-object v1, p1, Ldta;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2132
    :cond_0
    iget-object v0, p0, Ldii$2;->a:Ldii;

    iget-wide v2, p1, Ldta;->d:J

    .line 7028
    iput-wide v2, v0, Ldii;->d:J

    .line 2133
    iget-object v0, p0, Ldii$2;->a:Ldii;

    .line 8028
    iget-object v0, v0, Ldii;->a:Ldih$b;

    .line 2133
    iget-object v1, p0, Ldii$2;->a:Ldii;

    .line 9028
    iget-object v1, v1, Ldii;->e:Ljava/util/List;

    .line 2133
    invoke-interface {v0, v1}, Ldih$b;->b(Ljava/util/List;)V

    .line 122
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Ldii$2;->a:Ldii;

    .line 1028
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldii;->a(Z)V

    .line 145
    iget-object v0, p0, Ldii$2;->a:Ldii;

    .line 2028
    iget-object v0, v0, Ldii;->a:Ldih$b;

    .line 145
    invoke-interface {v0, p1, p2}, Ldih$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
