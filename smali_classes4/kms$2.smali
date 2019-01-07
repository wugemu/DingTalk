.class final Lkms$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lkms$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkms;->factory(Lkms;)Lkms$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkms;


# direct methods
.method constructor <init>(Lkms;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lkms$2;->a:Lkms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkms;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lkms$2;->a:Lkms;

    return-object v0
.end method
