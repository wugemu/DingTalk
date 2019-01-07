.class final Limq;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Limp;


# direct methods
.method constructor <init>(Limp;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Limq;->a:Limp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Limq;->a:Limp;

    invoke-static {v0}, Limp;->a(Limp;)V

    .line 63
    return-void
.end method
