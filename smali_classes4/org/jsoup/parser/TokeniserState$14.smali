.class final enum Lorg/jsoup/parser/TokeniserState$14;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 1
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    .prologue
    .line 296
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Llem;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p1, Lles;->g:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->a(Ljava/lang/StringBuilder;)V

    .line 298
    sget-object v0, Lorg/jsoup/parser/TokeniserState$14;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lles;->a(C)V

    .line 301
    sget-object v0, Lorg/jsoup/parser/TokeniserState$14;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v0, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0
.end method
