.class public final Llej$1;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lley;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Llej;


# direct methods
.method public constructor <init>(Llej;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Llej$1;->b:Llej;

    iput-object p2, p0, Llej$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llej;I)V
    .locals 1
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    .prologue
    .line 147
    iget-object v0, p0, Llej$1;->a:Ljava/lang/String;

    iput-object v0, p1, Llej;->g:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public final b(Llej;I)V
    .locals 0
    .param p1, "node"    # Llej;
    .param p2, "depth"    # I

    .prologue
    .line 151
    return-void
.end method
