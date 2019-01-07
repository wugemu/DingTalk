.class public final Lcll$b;
.super Ljava/lang/Object;
.source "LWSDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field final synthetic c:Lcll;


# direct methods
.method public constructor <init>(Lcll;)V
    .locals 0
    .param p1, "this$0"    # Lcll;

    .prologue
    .line 71
    iput-object p1, p0, Lcll$b;->c:Lcll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
