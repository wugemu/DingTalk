.class public final Lduk;
.super Ljava/lang/Object;
.source "RecordMediaIdWithPathObject.java"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final b:Lduj;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lduj;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "model"    # Lduj;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lduk;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lduk;->b:Lduj;

    .line 22
    return-void
.end method
