.class final Likx;
.super Ljava/lang/Object;
.source "ExternalFileAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Likt;


# direct methods
.method constructor <init>(Likt;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Likx;->a:Likt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Likx;->a:Likt;

    invoke-virtual {v0}, Likt;->d()V

    .line 211
    return-void
.end method
