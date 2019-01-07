.class final Ldi$1;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ldk$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)Ldk$a;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    .line 2410
    new-instance v0, Ldi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Ldi;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V

    .line 405
    return-object v0
.end method

.method public final bridge synthetic a(I)[Ldk$a;
    .locals 1

    .prologue
    .line 405
    .line 1416
    new-array v0, p1, [Ldi;

    .line 405
    return-object v0
.end method
