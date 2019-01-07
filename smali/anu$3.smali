.class final Lanu$3;
.super Ljava/lang/Object;
.source "BindingXCore.java"

# interfaces
.implements Lanu$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanu;-><init>(Laoa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lanu$b",
        "<",
        "Lanx;",
        "Landroid/content/Context;",
        "Laoa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanu;


# direct methods
.method constructor <init>(Lanu;)V
    .locals 0
    .param p1, "this$0"    # Lanu;

    .prologue
    .line 73
    iput-object p1, p0, Lanu$3;->a:Lanu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    check-cast p1, Landroid/content/Context;

    check-cast p2, Laoa;

    .line 1076
    new-instance v0, Laof;

    invoke-direct {v0, p1, p2, p3}, Laof;-><init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V

    .line 73
    return-object v0
.end method
