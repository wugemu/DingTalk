.class final Lfbg$7$1;
.super Ljava/lang/Object;
.source "UserProfileImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbg$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfbg$7;


# direct methods
.method constructor <init>(Lfbg$7;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfbg$7;

    .prologue
    .line 247
    iput-object p1, p0, Lfbg$7$1;->b:Lfbg$7;

    iput-object p2, p0, Lfbg$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 250
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    iget-object v1, p0, Lfbg$7$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfbn;->a(Ljava/util/List;)V

    .line 251
    return-void
.end method
