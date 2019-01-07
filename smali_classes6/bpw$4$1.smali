.class final Lbpw$4$1;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpw$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbpw$4;


# direct methods
.method constructor <init>(Lbpw$4;)V
    .locals 0
    .param p1, "this$0"    # Lbpw$4;

    .prologue
    .line 267
    iput-object p1, p0, Lbpw$4$1;->a:Lbpw$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 270
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v1

    .line 272
    .local v1, "pool":Lbox;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 273
    .local v0, "params":[Ljava/lang/String;
    const/4 v2, 0x0

    iget-object v3, p0, Lbpw$4$1;->a:Lbpw$4;

    iget-wide v4, v3, Lbpw$4;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 274
    invoke-static {}, Lbpe;->e()Lbpe;

    move-result-object v2

    sget-object v3, Lbpe$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbpe;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v2

    sget-object v3, Lbpb$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbpb;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v2

    sget-object v3, Lbpc$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbpc;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
