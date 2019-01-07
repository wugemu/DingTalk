.class public final Lbpe$1;
.super Ljava/lang/Object;
.source "CirclePostObjetDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lbox;

.field final synthetic c:Lbpe;


# direct methods
.method public constructor <init>(Lbpe;[Ljava/lang/String;Lbox;)V
    .locals 0
    .param p1, "this$0"    # Lbpe;

    .prologue
    .line 33
    iput-object p1, p0, Lbpe$1;->c:Lbpe;

    iput-object p2, p0, Lbpe$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lbpe$1;->b:Lbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lbpe$1;->c:Lbpe;

    sget-object v1, Lbpe$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lbpe$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbpe;->e(Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lbpe$1;->b:Lbox;

    iget-object v1, p0, Lbpe$1;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbox;->release(Ljava/lang/Object;)V

    .line 38
    return-void
.end method
