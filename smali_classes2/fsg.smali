.class public final Lfsg;
.super Ljava/lang/Object;
.source "ItemTypeFactory.java"

# interfaces
.implements Lfsh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 158
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 132
    :pswitch_1
    sget v0, Lezg$j;->view_name_card_create_information:I

    goto :goto_0

    .line 134
    :pswitch_2
    sget v0, Lezg$j;->view_name_card_edit_entry:I

    goto :goto_0

    .line 136
    :pswitch_3
    sget v0, Lezg$j;->view_name_card_edit_style:I

    goto :goto_0

    .line 138
    :pswitch_4
    sget v0, Lezg$j;->view_name_card_edit_privacy:I

    goto :goto_0

    .line 140
    :pswitch_5
    sget v0, Lezg$j;->view_name_card_edit_delete:I

    goto :goto_0

    .line 142
    :pswitch_6
    sget v0, Lezg$j;->view_name_card_infos_header:I

    goto :goto_0

    .line 144
    :pswitch_7
    sget v0, Lezg$j;->view_name_card_infos_avatar:I

    goto :goto_0

    .line 146
    :pswitch_8
    sget v0, Lezg$j;->view_name_card_infos_input:I

    goto :goto_0

    .line 148
    :pswitch_9
    sget v0, Lezg$j;->view_name_card_infos_select:I

    goto :goto_0

    .line 150
    :pswitch_a
    sget v0, Lezg$j;->view_name_card_orgs_item:I

    goto :goto_0

    .line 152
    :pswitch_b
    sget v0, Lezg$j;->view_name_card_orgs_suggest_item:I

    goto :goto_0

    .line 154
    :pswitch_c
    sget v0, Lezg$j;->view_name_card_exchange_avatar:I

    goto :goto_0

    .line 156
    :pswitch_d
    sget v0, Lezg$j;->view_name_card_infos_multiline_input:I

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public final a(ILandroid/view/View;)Lfsd;
    .locals 1
    .param p1, "type"    # I
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 192
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_1
    new-instance v0, Lfti;

    invoke-direct {v0, p2}, Lfti;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v0, Lftk;

    invoke-direct {v0, p2}, Lftk;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 170
    :pswitch_3
    new-instance v0, Lftm;

    invoke-direct {v0, p2}, Lftm;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 172
    :pswitch_4
    new-instance v0, Lftl;

    invoke-direct {v0, p2}, Lftl;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 174
    :pswitch_5
    new-instance v0, Lftj;

    invoke-direct {v0, p2}, Lftj;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 176
    :pswitch_6
    new-instance v0, Lfto;

    invoke-direct {v0, p2}, Lfto;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 178
    :pswitch_7
    new-instance v0, Lftn;

    invoke-direct {v0, p2}, Lftn;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 180
    :pswitch_8
    new-instance v0, Lftp;

    invoke-direct {v0, p2}, Lftp;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :pswitch_9
    new-instance v0, Lftr;

    invoke-direct {v0, p2}, Lftr;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 184
    :pswitch_a
    new-instance v0, Lfts;

    invoke-direct {v0, p2}, Lfts;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 186
    :pswitch_b
    new-instance v0, Lftt;

    invoke-direct {v0, p2}, Lftt;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 188
    :pswitch_c
    new-instance v0, Lfua;

    invoke-direct {v0, p2}, Lfua;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 190
    :pswitch_d
    new-instance v0, Lftq;

    invoke-direct {v0, p2}, Lftq;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_5
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method
