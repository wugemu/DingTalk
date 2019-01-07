.class final Ljhv$1;
.super Ljavax/lang/model/util/SimpleTypeVisitor7;
.source "TypeName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor7",
        "<",
        "Ljhv;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Ljhv$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor7;-><init>()V

    return-void
.end method
