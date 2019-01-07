.class public final Lhtf$a;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lhtf;


# direct methods
.method public constructor <init>(Lhtf;)V
    .locals 0
    .param p1, "this$0"    # Lhtf;

    .prologue
    .line 151
    iput-object p1, p0, Lhtf$a;->a:Lhtf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
