.class public final Lbry$1;
.super Ljava/lang/Object;
.source "DeviceBeaconHandle.java"

# interfaces
.implements Lbtj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbtj",
        "<",
        "Lbsg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lbry;


# direct methods
.method public constructor <init>(Lbry;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lbry;

    .prologue
    .line 207
    iput-object p1, p0, Lbry$1;->c:Lbry;

    iput-object p2, p0, Lbry$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbry$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 207
    check-cast p1, Lbsg;

    .line 1211
    iget-object v0, p0, Lbry$1;->c:Lbry;

    .line 2040
    iget-object v0, v0, Lbry;->e:Ljava/util/HashSet;

    .line 1211
    iget-object v1, p0, Lbry$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1212
    if-eqz p1, :cond_0

    .line 1215
    iget-object v0, p0, Lbry$1;->c:Lbry;

    .line 3040
    iget-object v0, v0, Lbry;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1215
    iget-object v1, p0, Lbry$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbry$b;

    .line 1216
    if-eqz v0, :cond_0

    .line 3495
    iput-object p1, v0, Lbry$b;->b:Lbsg;

    .line 1218
    iget-object v1, p0, Lbry$1;->c:Lbry;

    iget-boolean v2, p0, Lbry$1;->b:Z

    .line 4040
    invoke-virtual {v1, v2, v0}, Lbry;->a(ZLbry$b;)V

    .line 207
    :cond_0
    return-void
.end method
