.class public final Ljqp$a;
.super Ljqp$b;
.source "PageStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljqp;


# direct methods
.method public constructor <init>(Ljqp;)V
    .locals 0
    .param p1, "this$0"    # Ljqp;

    .prologue
    .line 138
    iput-object p1, p0, Ljqp$a;->b:Ljqp;

    invoke-direct {p0}, Ljqp$b;-><init>()V

    return-void
.end method
