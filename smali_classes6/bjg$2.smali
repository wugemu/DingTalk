.class final Lbjg$2;
.super Ljava/lang/Object;
.source "AddReceiverHelper.java"

# interfaces
.implements Lbko$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbjg;


# direct methods
.method constructor <init>(Lbjg;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 129
    iput-object p1, p0, Lbjg$2;->b:Lbjg;

    iput-object p2, p0, Lbjg$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lbjg$2;->b:Lbjg;

    iget-object v1, p0, Lbjg$2;->a:Ljava/util/List;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lbjg;->a(Lbjg;Ljava/util/List;I)V

    .line 133
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 137
    iget-object v0, p0, Lbjg$2;->b:Lbjg;

    iget-object v1, p0, Lbjg$2;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbjg;->a(Lbjg;Ljava/util/List;I)V

    .line 138
    return-void
.end method
