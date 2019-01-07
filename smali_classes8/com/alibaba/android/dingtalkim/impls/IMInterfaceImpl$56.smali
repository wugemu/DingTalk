.class final Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$56;
.super Ljava/lang/Object;
.source "IMInterfaceImpl.java"

# interfaces
.implements Lcra;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    .prologue
    .line 3436
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl$56;->a:Lcom/alibaba/android/dingtalkim/impls/IMInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcqy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3439
    invoke-static {}, Ldqc;->a()Ljava/util/List;

    move-result-object v0

    .line 4164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4165
    invoke-static {v0}, Leax;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqb;

    .line 4167
    if-eqz v0, :cond_0

    .line 4168
    iget-object v3, v0, Ldqb;->a:Ljava/lang/String;

    invoke-static {v3}, Ldqc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4169
    new-instance v4, Lcqy;

    iget-object v5, v0, Ldqb;->b:Ljava/lang/String;

    iget-object v0, v0, Ldqb;->c:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v0, v3, v6}, Lcqy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4170
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3439
    :cond_1
    return-object v1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 3444
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v0

    invoke-virtual {v0}, Ldqa;->c()Z

    move-result v0

    return v0
.end method
