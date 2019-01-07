.class public final Leii$3;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leii;


# direct methods
.method public constructor <init>(Leii;)V
    .locals 0
    .param p1, "this$0"    # Leii;

    .prologue
    .line 244
    iput-object p1, p0, Leii$3;->a:Leii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Leii$3;->a:Leii;

    invoke-static {v0}, Leii;->b(Leii;)V

    .line 248
    return-void
.end method
