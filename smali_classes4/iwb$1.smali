.class public final Liwb$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "Encrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/dbappsecurity/entity/PushDataAttributeEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liwb;


# direct methods
.method public constructor <init>(Liwb;)V
    .locals 0
    .param p1, "this$0"    # Liwb;

    .prologue
    .line 574
    iput-object p1, p0, Liwb$1;->a:Liwb;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
