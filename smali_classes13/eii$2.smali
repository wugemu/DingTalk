.class final Leii$2;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leii;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Leii;


# direct methods
.method constructor <init>(Leii;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Leii;

    .prologue
    .line 161
    iput-object p1, p0, Leii$2;->b:Leii;

    iput-object p2, p0, Leii$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Leii$2;->b:Leii;

    iget-object v1, p0, Leii$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Leii;->a(Leii;Ljava/util/List;)V

    .line 165
    return-void
.end method
