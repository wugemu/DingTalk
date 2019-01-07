.class public final Lamg;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 10
    invoke-static {}, Lamf;->a()Lamf;

    const-string/jumbo v0, "i"

    invoke-static {v0}, Lamf;->a(Ljava/lang/String;)V

    .line 11
    return-void
.end method
